  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                 
.target:                                    #        0    0      OPC=<label>            
  cvtss2sil %xmm1, %ebx                     #  1     0    4      OPC=cvtss2sil_r32_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label        
  xchgb %r8b, %bl                           #  3     0x9  3      OPC=xchgb_r8_r8        
  xchgl %ebx, %r9d                          #  4     0xc  3      OPC=xchgl_r32_r32      
  retq                                      #  5     0xf  1      OPC=retq               
                                                                                        
.size target, .-target
