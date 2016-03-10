  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movswq %bx, %r11                #  1     0     4      OPC=movswq_r64_r16  
  movq $0xffffffffffffffff, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  xaddl %r11d, %ebx               #  3     0xe   4      OPC=xaddl_r32_r32   
  xorl %r11d, %ebx                #  4     0x12  3      OPC=xorl_r32_r32    
  addw %bx, %r11w                 #  5     0x15  4      OPC=addw_r16_r16    
  callq .set_szp_for_bx           #  6     0x19  5      OPC=callq_label     
  retq                            #  7     0x1e  1      OPC=retq            
                                                                            
.size target, .-target
