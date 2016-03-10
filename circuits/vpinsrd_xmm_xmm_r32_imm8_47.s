  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovzxwd %xmm2, %xmm1            #  1     0     5      OPC=vpmovzxwd_xmm_xmm       
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label             
  movl %ebx, %r11d                  #  3     0xa   3      OPC=movl_r32_r32            
  vmulsd %xmm1, %xmm2, %xmm1        #  4     0xd   4      OPC=vmulsd_xmm_xmm_xmm      
  callq .move_064_128_r10_r11_xmm2  #  5     0x11  5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm1, %xmm4    #  6     0x16  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm4, %xmm2, %xmm1      #  7     0x1a  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                              #  8     0x1e  1      OPC=retq                    
                                                                                      
.size target, .-target
