  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movzbl %cl, %r9d         #  1     0     4      OPC=movzbl_r32_r8   
  movswq %r9w, %r10        #  2     0x4   4      OPC=movswq_r64_r16  
  sall $0x1, %r9d          #  3     0x8   3      OPC=sall_r32_one    
  callq .read_cf_into_rbx  #  4     0xb   5      OPC=callq_label     
  xchgw %r10w, %bx         #  5     0x10  4      OPC=xchgw_r16_r16   
  retq                     #  6     0x14  1      OPC=retq            
                                                                     
.size target, .-target
