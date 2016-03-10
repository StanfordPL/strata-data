  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vpmovsxwd %xmm1, %xmm3                          #  2     0x5   5      OPC=vpmovsxwd_xmm_xmm         
  vfnmsub213ss %xmm8, %xmm3, %xmm1                #  3     0xa   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  callq .move_byte_12_of_ymm1_to_r8b              #  4     0xf   5      OPC=callq_label               
  movzbl %r8b, %ebx                               #  5     0x14  4      OPC=movzbl_r32_r8             
  retq                                            #  6     0x18  1      OPC=retq                      
                                                                                                      
.size target, .-target
