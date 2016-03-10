  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  movq $0x8, %rbx                    #  1     0     10     OPC=movq_r64_imm64     
  vpxor %xmm1, %xmm1, %xmm7          #  2     0xa   4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_032_016_ebx_r10w_r11w  #  3     0xe   5      OPC=callq_label        
  movd %xmm7, %ebx                   #  4     0x13  4      OPC=movd_r32_xmm       
  movzbl %r10b, %r8d                 #  5     0x17  4      OPC=movzbl_r32_r8      
  callq .move_byte_2_of_ymm1_to_r8b  #  6     0x1b  5      OPC=callq_label        
  xaddq %rbx, %r8                    #  7     0x20  4      OPC=xaddq_r64_r64      
  retq                               #  8     0x24  1      OPC=retq               
                                                                                  
.size target, .-target
