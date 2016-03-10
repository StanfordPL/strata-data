  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  setbe %al                         #  1     0     3      OPC=setbe_r8        
  movq $0x6, %rbx                   #  2     0x3   10     OPC=movq_r64_imm64  
  movb %al, %bl                     #  3     0xd   2      OPC=movb_r8_r8      
  movslq %ebx, %r8                  #  4     0xf   3      OPC=movslq_r64_r32  
  callq .move_r8b_to_byte_6_of_rbx  #  5     0x12  5      OPC=callq_label     
  retq                              #  6     0x17  1      OPC=retq            
                                                                              
.size target, .-target
