  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  movshdup %xmm1, %xmm4           #  1     0     4      OPC=movshdup_xmm_xmm  
  movq $0xfffffffffffffffd, %rbx  #  2     0x4   10     OPC=movq_r64_imm64    
  xaddb %bh, %bh                  #  3     0xe   3      OPC=xaddb_rh_rh       
  vmovd %xmm4, %r8d               #  4     0x11  5      OPC=vmovd_r32_xmm     
  cmovngel %r8d, %ebx             #  5     0x16  4      OPC=cmovngel_r32_r32  
  retq                            #  6     0x1a  1      OPC=retq              
                                                                              
.size target, .-target
