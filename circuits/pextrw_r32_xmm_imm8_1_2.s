  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm2                    #  1     0     5      OPC=vpmovsxwd_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  movq $0x1, %rbx                           #  3     0xa   10     OPC=movq_r64_imm64     
  subb %bl, %bh                             #  4     0x14  2      OPC=subb_rh_r8         
  cmovlel %r8d, %eax                        #  5     0x16  4      OPC=cmovlel_r32_r32    
  cmovpw %ax, %bx                           #  6     0x1a  4      OPC=cmovpw_r16_r16     
  retq                                      #  7     0x1e  1      OPC=retq               
                                                                                         
.size target, .-target
