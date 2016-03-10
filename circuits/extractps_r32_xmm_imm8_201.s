  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  movq $0xfffffffffffffff0, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64   
  vmovd %xmm9, %r12d                              #  3     0xf   5      OPC=vmovd_r32_xmm    
  orb %bh, %bh                                    #  4     0x14  2      OPC=orb_rh_rh        
  cmovnol %r12d, %ebx                             #  5     0x16  4      OPC=cmovnol_r32_r32  
  retq                                            #  6     0x1a  1      OPC=retq             
                                                                                             
.size target, .-target
