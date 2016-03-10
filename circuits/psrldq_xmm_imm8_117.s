  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  rsqrtps %xmm1, %xmm0                  #  1     0     3      OPC=rsqrtps_xmm_xmm     
  vmovss %xmm1, %xmm0, %xmm7            #  2     0x3   4      OPC=vmovss_xmm_xmm_xmm  
  vpmovzxbd %xmm7, %xmm2                #  3     0x7   5      OPC=vpmovzxbd_xmm_xmm   
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xc   5      OPC=callq_label         
  movupd %xmm11, %xmm1                  #  5     0x11  5      OPC=movupd_xmm_xmm      
  retq                                  #  6     0x16  1      OPC=retq                
                                                                                      
.size target, .-target
