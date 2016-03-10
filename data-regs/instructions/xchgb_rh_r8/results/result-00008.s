  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbq %bl, %rcx                   #  1     0     4      OPC=movsbq_r64_r8  
  xchgb %ah, %cl                     #  2     0x4   2      OPC=xchgb_r8_rh    
  callq .move_064_032_rcx_r10d_r11d  #  3     0x6   5      OPC=callq_label    
  movzbw %r10b, %bx                  #  4     0xb   5      OPC=movzbw_r16_r8  
  retq                               #  5     0x10  1      OPC=retq           
                                                                              
.size target, .-target
