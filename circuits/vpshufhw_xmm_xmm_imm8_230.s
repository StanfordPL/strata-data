  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  xchgw %ax, %r9w                           #  2     0x5   3      OPC=xchgw_r16_ax   
  callq .move_128_064_xmm2_r10_r11          #  3     0x8   5      OPC=callq_label    
  vzeroall                                  #  4     0xd   3      OPC=vzeroall       
  xaddw %r11w, %ax                          #  5     0x10  5      OPC=xaddw_r16_r16  
  callq .move_064_128_r10_r11_xmm1          #  6     0x15  5      OPC=callq_label    
  retq                                      #  7     0x1a  1      OPC=retq           
                                                                                     
.size target, .-target
