  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  movq $0x0, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64   
  xorb %bl, %bh                             #  3     0xf   2      OPC=xorb_rh_r8       
  rolw $0x1, %r9w                           #  4     0x11  4      OPC=rolw_r16_one     
  cmovngl %edx, %ebx                        #  5     0x15  3      OPC=cmovngl_r32_r32  
  retq                                      #  6     0x18  1      OPC=retq             
                                                                                       
.size target, .-target
