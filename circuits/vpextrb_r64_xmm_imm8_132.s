  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  movq $0x3, %rbx                    #  1     0     10     OPC=movq_r64_imm64     
  vpxor %xmm1, %xmm1, %xmm14         #  2     0xa   4      OPC=vpxor_xmm_xmm_xmm  
  movmskpd %xmm14, %eax              #  3     0xe   5      OPC=movmskpd_r32_xmm   
  andb %ah, %bl                      #  4     0x13  2      OPC=andb_r8_rh         
  callq .move_byte_4_of_ymm1_to_r8b  #  5     0x15  5      OPC=callq_label        
  adcb %r8b, %bl                     #  6     0x1a  3      OPC=adcb_r8_r8         
  retq                               #  7     0x1d  1      OPC=retq               
                                                                                  
.size target, .-target
