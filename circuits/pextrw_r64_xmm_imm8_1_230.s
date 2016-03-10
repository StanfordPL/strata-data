  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label          
  movzwl %r9w, %eax                         #  2     0x5   4      OPC=movzwl_r32_r16       
  pxor %xmm1, %xmm1                         #  3     0x9   4      OPC=pxor_xmm_xmm         
  vcvttss2sil %xmm1, %ebx                   #  4     0xd   4      OPC=vcvttss2sil_r32_xmm  
  xchgw %ax, %bx                            #  5     0x11  2      OPC=xchgw_r16_ax         
  retq                                      #  6     0x13  1      OPC=retq                 
                                                                                           
.size target, .-target
