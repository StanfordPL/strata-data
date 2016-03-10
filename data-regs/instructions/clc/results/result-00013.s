  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_pf_into_rbx  #  2     0x3   5      OPC=callq_label   
  callq .set_szp_for_rbx   #  3     0x8   5      OPC=callq_label   
  callq .read_sf_into_rcx  #  4     0xd   5      OPC=callq_label   
  sarq %cl, %rbx           #  5     0x12  3      OPC=sarq_r64_cl   
  retq                     #  6     0x15  1      OPC=retq          
                                                                   
.size target, .-target
