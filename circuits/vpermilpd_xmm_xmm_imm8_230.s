  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label         
  vzeroall                          #  2     0x5   3      OPC=vzeroall            
  rcpss %xmm2, %xmm3                #  3     0x8   4      OPC=rcpss_xmm_xmm       
  vcvttpd2dq %xmm3, %xmm1           #  4     0xc   4      OPC=vcvttpd2dq_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1  #  5     0x10  5      OPC=callq_label         
  retq                              #  6     0x15  1      OPC=retq                
                                                                                  
.size target, .-target
