  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vpxor %ymm14, %ymm14, %ymm14  #  1     0     5      OPC=vpxor_ymm_ymm_ymm   
  vcvtss2sil %xmm14, %ecx       #  2     0x5   5      OPC=vcvtss2sil_r32_xmm  
  orb %ah, %cl                  #  3     0xa   2      OPC=orb_r8_rh           
  andb %cl, %bh                 #  4     0xc   2      OPC=andb_rh_r8          
  xchgb %bh, %ah                #  5     0xe   2      OPC=xchgb_rh_rh         
  retq                          #  6     0x10  1      OPC=retq                
                                                                              
.size target, .-target
