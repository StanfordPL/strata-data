  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movsbq %cl, %r10                   #  1     0     4      OPC=movsbq_r64_r8    
  movq $0x0, %rbp                    #  2     0x4   10     OPC=movq_r64_imm64   
  popcntq %rbp, %r11                 #  3     0xe   5      OPC=popcntq_r64_r64  
  movsbq %cl, %rbx                   #  4     0x13  4      OPC=movsbq_r64_r8    
  callq .move_byte_2_of_rbx_to_r9b   #  5     0x17  5      OPC=callq_label      
  callq .move_032_064_r10d_r11d_rbx  #  6     0x1c  5      OPC=callq_label      
  callq .move_r9b_to_byte_2_of_rbx   #  7     0x21  5      OPC=callq_label      
  retq                               #  8     0x26  1      OPC=retq             
                                                                                
.size target, .-target
