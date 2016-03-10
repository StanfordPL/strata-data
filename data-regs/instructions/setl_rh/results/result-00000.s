  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label     
  movswq %cx, %rax         #  2     0x5   4      OPC=movswq_r64_r16  
  sets %ah                 #  3     0x9   3      OPC=sets_rh         
  incl %eax                #  4     0xc   2      OPC=incl_r32        
  xorb %cl, %ah            #  5     0xe   2      OPC=xorb_rh_r8      
  retq                     #  6     0x10  1      OPC=retq            
                                                                     
.size target, .-target
