  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  movl %ebx, %r11d                          #  1     0     3      OPC=movl_r32_r32   
  vzeroall                                  #  2     0x3   3      OPC=vzeroall       
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0x6   5      OPC=callq_label    
  xorl %eax, %r11d                          #  4     0xb   3      OPC=xorl_r32_r32   
  vmovq %r11, %xmm1                         #  5     0xe   5      OPC=vmovq_xmm_r64  
  retq                                      #  6     0x13  1      OPC=retq           
                                                                                     
.size target, .-target
