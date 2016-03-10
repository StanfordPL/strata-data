  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_zf_into_rcx  #  2     0x3   5      OPC=callq_label   
  rolb $0x1, %al           #  3     0x8   2      OPC=rolb_r8_one   
  sarq %cl, %rbx           #  4     0xa   3      OPC=sarq_r64_cl   
  decb %ch                 #  5     0xd   2      OPC=decb_rh       
  callq .set_szp_for_rbx   #  6     0xf   5      OPC=callq_label   
  retq                     #  7     0x14  1      OPC=retq          
                                                                   
.size target, .-target
