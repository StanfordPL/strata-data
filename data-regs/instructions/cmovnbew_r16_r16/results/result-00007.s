  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  cmovbew %bx, %cx         #  1     0     4      OPC=cmovbew_r16_r16  
  movzwl %cx, %r12d        #  2     0x4   4      OPC=movzwl_r32_r16   
  cmpw %bx, %cx            #  3     0x8   3      OPC=cmpw_r16_r16     
  callq .read_pf_into_rbx  #  4     0xb   5      OPC=callq_label      
  popcntw %bx, %r15w       #  5     0x10  6      OPC=popcntw_r16_r16  
  cmovncw %r12w, %bx       #  6     0x16  5      OPC=cmovncw_r16_r16  
  retq                     #  7     0x1b  1      OPC=retq             
                                                                      
.size target, .-target
