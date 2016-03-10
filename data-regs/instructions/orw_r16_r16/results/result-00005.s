  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode                 
.target:                           #        0     0      OPC=<label>            
  movswq %bx, %r13                 #  1     0     4      OPC=movswq_r64_r16     
  movswl %cx, %r8d                 #  2     0x4   4      OPC=movswl_r32_r16     
  andnl %r13d, %r8d, %r9d          #  3     0x8   5      OPC=andnl_r32_r32_r32  
  addl %r9d, %r8d                  #  4     0xd   3      OPC=addl_r32_r32       
  callq .move_016_032_r8w_r9w_ebx  #  5     0x10  5      OPC=callq_label        
  rolq $0x1, %r9                   #  6     0x15  3      OPC=rolq_r64_one       
  retq                             #  7     0x18  1      OPC=retq               
                                                                                
.size target, .-target
