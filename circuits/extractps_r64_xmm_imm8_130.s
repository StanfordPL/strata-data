  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vcvtsd2sil %xmm1, %ebx                        #  1     0     4      OPC=vcvtsd2sil_r32_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vmovq %xmm6, %r13                             #  3     0x9   5      OPC=vmovq_r64_xmm       
  xaddl %ebx, %r13d                             #  4     0xe   4      OPC=xaddl_r32_r32       
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
