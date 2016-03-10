  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  vmovq %xmm1, %r15   #  1     0    5      OPC=vmovq_r64_xmm  
  bswap %r15d         #  2     0x5  3      OPC=bswap_r32      
  movzbl %r15b, %ebx  #  3     0x8  4      OPC=movzbl_r32_r8  
  retq                #  4     0xc  1      OPC=retq           
                                                              
.size target, .-target
