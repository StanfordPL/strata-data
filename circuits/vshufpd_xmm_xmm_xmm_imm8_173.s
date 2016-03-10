  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movddup %xmm3, %xmm9              #  1     0     5      OPC=movddup_xmm_xmm   
  unpckhpd %xmm9, %xmm2             #  2     0x5   5      OPC=unpckhpd_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  3     0xa   5      OPC=callq_label       
  vzeroall                          #  4     0xf   3      OPC=vzeroall          
  callq .move_064_128_r10_r11_xmm1  #  5     0x12  5      OPC=callq_label       
  retq                              #  6     0x17  1      OPC=retq              
                                                                                
.size target, .-target
