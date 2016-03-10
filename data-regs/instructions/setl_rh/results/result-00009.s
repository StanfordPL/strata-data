  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label     
  movsbl %cl, %r12d        #  2     0x5   4      OPC=movsbl_r32_r8   
  movswq %r12w, %rax       #  3     0x9   4      OPC=movswq_r64_r16  
  setnge %ah               #  4     0xd   3      OPC=setnge_rh       
  cwtl                     #  5     0x10  1      OPC=cwtl            
  retq                     #  6     0x11  1      OPC=retq            
                                                                     
.size target, .-target
