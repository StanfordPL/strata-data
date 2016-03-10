  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label      
  rolw $0x1, %bx           #  2     0x5   3      OPC=rolw_r16_one     
  xorq %rax, %rax          #  3     0x8   3      OPC=xorq_r64_r64     
  popcntw %bx, %ax         #  4     0xb   5      OPC=popcntw_r16_r16  
  shll $0x1, %eax          #  5     0x10  2      OPC=shll_r32_one     
  setnp %ah                #  6     0x12  3      OPC=setnp_rh         
  retq                     #  7     0x15  1      OPC=retq             
                                                                      
.size target, .-target
