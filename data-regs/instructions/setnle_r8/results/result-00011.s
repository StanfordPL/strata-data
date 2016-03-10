  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x1, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  setle %r13b                        #  2     0xa   4      OPC=setle_r8        
  callq .move_064_032_rbx_r10d_r11d  #  3     0xe   5      OPC=callq_label     
  movslq %r10d, %rbx                 #  4     0x13  3      OPC=movslq_r64_r32  
  xorb %r13b, %bl                    #  5     0x16  3      OPC=xorb_r8_r8      
  retq                               #  6     0x19  1      OPC=retq            
                                                                               
.size target, .-target
