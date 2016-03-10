  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label      
  movswl %bx, %r13d                 #  2     0x5   4      OPC=movswl_r32_r16   
  xaddb %r13b, %r12b                #  3     0x9   4      OPC=xaddb_r8_r8      
  movswq %r13w, %rax                #  4     0xd   4      OPC=movswq_r64_r16   
  sarq $0x1, %rax                   #  5     0x11  3      OPC=sarq_r64_one     
  cmovnow %ax, %bx                  #  6     0x14  4      OPC=cmovnow_r16_r16  
  retq                              #  7     0x18  1      OPC=retq             
                                                                               
.size target, .-target
