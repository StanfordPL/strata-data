  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                  
.target:                  #        0    0      OPC=<label>             
  vcvtsd2sil %xmm1, %ebx  #  1     0    4      OPC=vcvtsd2sil_r32_xmm  
  popcntq %rbx, %r8       #  2     0x4  5      OPC=popcntq_r64_r64     
  cmc                     #  3     0x9  1      OPC=cmc                 
  cmovnal %ebx, %ebx      #  4     0xa  3      OPC=cmovnal_r32_r32     
  retq                    #  5     0xd  1      OPC=retq                
                                                                       
.size target, .-target
