  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  pmovsxdq %xmm1, %xmm2                     #  1     0     5      OPC=pmovsxdq_xmm_xmm         
  vfmadd231sd %xmm2, %xmm1, %xmm1           #  2     0x5   5      OPC=vfmadd231sd_xmm_xmm_xmm  
  movq $0x8, %rbx                           #  3     0xa   10     OPC=movq_r64_imm64           
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x14  5      OPC=callq_label              
  movb %bl, %bh                             #  5     0x19  2      OPC=movb_rh_r8               
  xaddw %bx, %r8w                           #  6     0x1b  5      OPC=xaddw_r16_r16            
  retq                                      #  7     0x20  1      OPC=retq                     
                                                                                               
.size target, .-target
