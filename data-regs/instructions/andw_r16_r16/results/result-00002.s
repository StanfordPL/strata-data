  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vpxor %ymm13, %ymm13, %ymm15       #  1     0     5      OPC=vpxor_ymm_ymm_ymm       
  vminps %ymm15, %ymm15, %ymm11      #  2     0x5   5      OPC=vminps_ymm_ymm_ymm      
  vpunpckldq %ymm11, %ymm11, %ymm12  #  3     0xa   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovq %xmm12, %r14                 #  4     0xf   5      OPC=vmovq_r64_xmm           
  andb %cl, %bl                      #  5     0x14  2      OPC=andb_r8_r8              
  andb %ch, %bh                      #  6     0x16  2      OPC=andb_rh_rh              
  addw %bx, %r14w                    #  7     0x18  4      OPC=addw_r16_r16            
  retq                               #  8     0x1c  1      OPC=retq                    
                                                                                       
.size target, .-target
