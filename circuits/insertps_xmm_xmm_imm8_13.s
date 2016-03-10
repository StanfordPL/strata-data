  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  vcvttpd2dq %xmm2, %xmm3                         #  1     0     4      OPC=vcvttpd2dq_xmm_xmm        
  vfnmsub213sd %xmm2, %xmm2, %xmm3                #  2     0x4   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label               
  vmovss %xmm10, %xmm1, %xmm4                     #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm        
  movq %xmm4, %xmm1                               #  5     0x13  4      OPC=movq_xmm_xmm              
  retq                                            #  6     0x17  1      OPC=retq                      
                                                                                                      
.size target, .-target
