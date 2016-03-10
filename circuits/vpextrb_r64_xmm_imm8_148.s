  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  cvtss2sil %xmm1, %r9d                           #  2     0x5   5      OPC=cvtss2sil_r32_xmm  
  vmovd %xmm9, %edi                               #  3     0xa   4      OPC=vmovd_r32_xmm      
  movzbl %r9b, %ebx                               #  4     0xe   4      OPC=movzbl_r32_r8      
  xchgb %dil, %bl                                 #  5     0x12  3      OPC=xchgb_r8_r8        
  retq                                            #  6     0x15  1      OPC=retq               
                                                                                               
.size target, .-target
