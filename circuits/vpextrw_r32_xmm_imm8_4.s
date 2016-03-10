  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  vmovapd %xmm1, %xmm1                      #  1     0     4      OPC=vmovapd_xmm_xmm  
  movq $0x80, %rbx                          #  2     0x4   10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xe   5      OPC=callq_label      
  addb %bh, %bh                             #  4     0x13  2      OPC=addb_rh_rh       
  xchgw %bx, %r8w                           #  5     0x15  4      OPC=xchgw_r16_r16    
  retq                                      #  6     0x19  1      OPC=retq             
                                                                                       
.size target, .-target
