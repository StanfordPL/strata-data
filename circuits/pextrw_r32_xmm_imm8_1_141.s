  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm7, %r11                         #  2     0x5   4      OPC=vmovmskpd_r64_xmm  
  andw %r11w, %r11w                             #  3     0x9   4      OPC=andw_r16_r16       
  pmovzxwd %xmm6, %xmm2                         #  4     0xd   5      OPC=pmovzxwd_xmm_xmm   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  5     0x12  5      OPC=callq_label        
  cvtsd2sil %xmm2, %ebx                         #  6     0x17  4      OPC=cvtsd2sil_r32_xmm  
  cmovbel %edx, %ebx                            #  7     0x1b  3      OPC=cmovbel_r32_r32    
  retq                                          #  8     0x1e  1      OPC=retq               
                                                                                             
.size target, .-target
