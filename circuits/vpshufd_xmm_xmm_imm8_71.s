  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm2, %xmm15                #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vmovd %r9d, %xmm1                         #  3     0xa   5      OPC=vmovd_xmm_r32         
  vmovss %xmm1, %xmm15, %xmm1               #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm    
  retq                                      #  5     0x13  1      OPC=retq                  
                                                                                            
.size target, .-target
