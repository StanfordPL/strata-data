  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                       #  Line  RIP  Bytes  Opcode                  
.target:                     #        0    0      OPC=<label>             
  andb %bh, %ch              #  1     0    2      OPC=andb_rh_rh          
  vpxor %ymm7, %ymm7, %ymm1  #  2     0x2  4      OPC=vpxor_ymm_ymm_ymm   
  andb %bl, %cl              #  3     0x6  2      OPC=andb_r8_r8          
  cvttsd2sil %xmm1, %ebx     #  4     0x8  4      OPC=cvttsd2sil_r32_xmm  
  adcw %cx, %bx              #  5     0xc  3      OPC=adcw_r16_r16        
  retq                       #  6     0xf  1      OPC=retq                
                                                                          
.size target, .-target
