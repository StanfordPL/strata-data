  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovshdup %xmm2, %xmm1                    #  1     0     4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label        
  vmovd %r8d, %xmm5                         #  3     0x9   5      OPC=vmovd_xmm_r32      
  unpcklpd %xmm5, %xmm1                     #  4     0xe   4      OPC=unpcklpd_xmm_xmm   
  cvtsd2ss %xmm5, %xmm1                     #  5     0x12  4      OPC=cvtsd2ss_xmm_xmm   
  retq                                      #  6     0x16  1      OPC=retq               
                                                                                         
.size target, .-target
