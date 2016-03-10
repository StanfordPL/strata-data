  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d    #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  cvtsd2sil %xmm10, %ebx                          #  3     0xa   5      OPC=cvtsd2sil_r32_xmm  
  testl %ebx, %r11d                               #  4     0xf   3      OPC=testl_r32_r32      
  cmovnol %r13d, %ebx                             #  5     0x12  4      OPC=cmovnol_r32_r32    
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
