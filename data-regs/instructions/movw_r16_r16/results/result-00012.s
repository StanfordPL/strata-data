  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .clear_pf          #  1     0     5      OPC=callq_label     
  callq .read_pf_into_rbx  #  2     0x5   5      OPC=callq_label     
  movswq %bx, %rdi         #  3     0xa   4      OPC=movswq_r64_r16  
  movsbl %dil, %eax        #  4     0xe   4      OPC=movsbl_r32_r8   
  xorw %cx, %ax            #  5     0x12  3      OPC=xorw_r16_r16    
  xchgw %ax, %bx           #  6     0x15  3      OPC=xchgw_r16_r16   
  retq                     #  7     0x18  1      OPC=retq            
                                                                     
.size target, .-target
