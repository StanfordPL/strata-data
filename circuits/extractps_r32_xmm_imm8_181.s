  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  movshdup %xmm1, %xmm9  #  1     0     5      OPC=movshdup_xmm_xmm  
  vmovd %xmm9, %edi      #  2     0x5   4      OPC=vmovd_r32_xmm     
  testl %edi, %edi       #  3     0x9   2      OPC=testl_r32_r32     
  movsbl %dil, %ebx      #  4     0xb   4      OPC=movsbl_r32_r8     
  cmovncl %edi, %ebx     #  5     0xf   3      OPC=cmovncl_r32_r32   
  retq                   #  6     0x12  1      OPC=retq              
                                                                     
.size target, .-target
