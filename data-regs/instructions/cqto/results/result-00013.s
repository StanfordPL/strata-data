  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xaddq %rax, %rax         #  1     0     4      OPC=xaddq_r64_r64  
  callq .read_cf_into_rbx  #  2     0x4   5      OPC=callq_label    
  xorq %rax, %rax          #  3     0x9   3      OPC=xorq_r64_r64   
  cltd                     #  4     0xc   1      OPC=cltd           
  subq %rbx, %rdx          #  5     0xd   3      OPC=subq_r64_r64   
  retq                     #  6     0x10  1      OPC=retq           
                                                                    
.size target, .-target
