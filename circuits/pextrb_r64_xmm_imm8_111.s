  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  callq .move_byte_15_of_ymm1_to_r8b            #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm4, %rbx                         #  3     0xa   4      OPC=vmovmskpd_r64_xmm  
  orb %bh, %bh                                  #  4     0xe   2      OPC=orb_rh_rh          
  xaddb %bl, %r8b                               #  5     0x10  4      OPC=xaddb_r8_r8        
  retq                                          #  6     0x14  1      OPC=retq               
                                                                                             
.size target, .-target
