  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label         
  shlq $0x1, %r8                      #  2     0x5   3      OPC=shlq_r64_one        
  vzeroall                            #  3     0x8   3      OPC=vzeroall            
  shll $0x1, %r9d                     #  4     0xb   3      OPC=shll_r32_one        
  vmaxpd %xmm3, %xmm0, %xmm1          #  5     0xe   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_r9b_to_byte_15_of_ymm1  #  6     0x12  5      OPC=callq_label         
  callq .move_r8b_to_byte_7_of_ymm1   #  7     0x17  5      OPC=callq_label         
  retq                                #  8     0x1c  1      OPC=retq                
                                                                                    
.size target, .-target
