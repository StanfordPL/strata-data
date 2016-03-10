  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  callq .move_032_016_ecx_r10w_r11w  #  1     0    5      OPC=callq_label     
  testb %cl, %r10b                   #  2     0x5  3      OPC=testb_r8_r8     
  cmovcw %cx, %bx                    #  3     0x8  4      OPC=cmovcw_r16_r16  
  subq %rcx, %rbx                    #  4     0xc  3      OPC=subq_r64_r64    
  retq                               #  5     0xf  1      OPC=retq            
                                                                              
.size target, .-target
