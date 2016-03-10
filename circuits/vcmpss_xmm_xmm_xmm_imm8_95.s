  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  movq $0xffffffffffffffff, %rax      #  1     0     10     OPC=movq_r64_imm64      
  movd %eax, %xmm1                    #  2     0xa   4      OPC=movd_xmm_r32        
  callq .move_byte_8_of_ymm1_to_r9b   #  3     0xe   5      OPC=callq_label         
  callq .move_r9b_to_byte_14_of_ymm1  #  4     0x13  5      OPC=callq_label         
  callq .move_r9b_to_byte_8_of_ymm1   #  5     0x18  5      OPC=callq_label         
  vrcpss %xmm1, %xmm2, %xmm1          #  6     0x1d  4      OPC=vrcpss_xmm_xmm_xmm  
  retq                                #  7     0x21  1      OPC=retq                
                                                                                    
.size target, .-target
