  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movswq %bx, %rbx    #  1     0     4      OPC=movswq_r64_r16   
  xchgb %ch, %ch      #  2     0x4   2      OPC=xchgb_rh_rh      
  movswl %cx, %r10d   #  3     0x6   4      OPC=movswl_r32_r16   
  orl %ebx, %r10d     #  4     0xa   3      OPC=orl_r32_r32      
  cmovnzw %r10w, %bx  #  5     0xd   5      OPC=cmovnzw_r16_r16  
  retq                #  6     0x12  1      OPC=retq             
                                                                 
.size target, .-target
