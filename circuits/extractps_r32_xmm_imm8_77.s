  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                  
.target:                                    #        0    0      OPC=<label>             
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label         
  cvttsd2sil %xmm1, %ebx                    #  2     0x5  4      OPC=cvttsd2sil_r32_xmm  
  andb %bh, %bh                             #  3     0x9  2      OPC=andb_rh_rh          
  cmovael %edx, %ebx                        #  4     0xb  3      OPC=cmovael_r32_r32     
  retq                                      #  5     0xe  1      OPC=retq                
                                                                                         
.size target, .-target
