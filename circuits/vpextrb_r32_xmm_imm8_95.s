  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  unpckhpd %xmm1, %xmm1               #  1     0     4      OPC=unpckhpd_xmm_xmm    
  vmaxpd %xmm1, %xmm1, %xmm9          #  2     0x4   4      OPC=vmaxpd_xmm_xmm_xmm  
  movq $0x3, %rbx                     #  3     0x8   10     OPC=movq_r64_imm64      
  vmovups %ymm9, %ymm1                #  4     0x12  5      OPC=vmovups_ymm_ymm     
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0x17  5      OPC=callq_label         
  movb %r9b, %bl                      #  6     0x1c  3      OPC=movb_r8_r8          
  retq                                #  7     0x1f  1      OPC=retq                
                                                                                    
.size target, .-target
