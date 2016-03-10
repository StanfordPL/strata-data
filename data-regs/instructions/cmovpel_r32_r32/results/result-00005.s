  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  setpo %r9b          #  1     0     4      OPC=setpo_r8        
  decb %r9b           #  2     0x4   3      OPC=decb_r8         
  movl %ecx, %r14d    #  3     0x7   3      OPC=movl_r32_r32    
  shlb $0x1, %r9b     #  4     0xa   3      OPC=shlb_r8_one     
  cmovbl %r14d, %ebx  #  5     0xd   4      OPC=cmovbl_r32_r32  
  retq                #  6     0x11  1      OPC=retq            
                                                                
.size target, .-target
