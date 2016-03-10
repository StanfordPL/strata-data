  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm1             #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label            
  movq $0x1, %rbx                           #  3     0x9   10     OPC=movq_r64_imm64         
  xchgb %al, %bl                            #  4     0x13  2      OPC=xchgb_r8_r8            
  retq                                      #  5     0x15  1      OPC=retq                   
                                                                                             
.size target, .-target
