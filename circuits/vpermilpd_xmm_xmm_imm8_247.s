  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label       
  notl %r10d                        #  2     0x5   3      OPC=notl_r32          
  vzeroall                          #  3     0x8   3      OPC=vzeroall          
  callq .move_064_128_r10_r11_xmm3  #  4     0xb   5      OPC=callq_label       
  movapd %xmm3, %xmm1               #  5     0x10  4      OPC=movapd_xmm_xmm    
  unpckhpd %xmm3, %xmm7             #  6     0x14  4      OPC=unpckhpd_xmm_xmm  
  unpckhpd %xmm7, %xmm1             #  7     0x18  4      OPC=unpckhpd_xmm_xmm  
  retq                              #  8     0x1c  1      OPC=retq              
                                                                                
.size target, .-target
