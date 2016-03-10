  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label     
  callq .set_szp_for_rbx   #  2     0x5   5      OPC=callq_label     
  callq .read_zf_into_rcx  #  3     0xa   5      OPC=callq_label     
  movswq %cx, %rbx         #  4     0xf   4      OPC=movswq_r64_r16  
  movb %bl, %ah            #  5     0x13  2      OPC=movb_rh_r8      
  retq                     #  6     0x15  1      OPC=retq            
                                                                     
.size target, .-target
