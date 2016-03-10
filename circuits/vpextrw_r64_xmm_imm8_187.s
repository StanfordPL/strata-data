  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                        
.target:                                    #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label               
  andb %r8b, %r8b                           #  2     0x5   3      OPC=andb_r8_r8                
  callq .move_032_016_edx_r8w_r9w           #  3     0x8   5      OPC=callq_label               
  vfnmsub213ss %xmm1, %xmm1, %xmm1          #  4     0xd   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  callq .read_zf_into_rbx                   #  5     0x12  5      OPC=callq_label               
  callq .move_byte_6_of_ymm1_to_r9b         #  6     0x17  5      OPC=callq_label               
  movw %r9w, %bx                            #  7     0x1c  4      OPC=movw_r16_r16              
  retq                                      #  8     0x20  1      OPC=retq                      
                                                                                                
.size target, .-target
