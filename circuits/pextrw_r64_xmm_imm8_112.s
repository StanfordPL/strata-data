  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  vmovd %xmm1, %r13d  #  1     0     5      OPC=vmovd_r32_xmm   
  movq $0x40, %rbx    #  2     0x5   10     OPC=movq_r64_imm64  
  callq .set_sf       #  3     0xf   5      OPC=callq_label     
  movzwq %r13w, %r10  #  4     0x14  4      OPC=movzwq_r64_r16  
  cmovsw %r10w, %bx   #  5     0x18  5      OPC=cmovsw_r16_r16  
  retq                #  6     0x1d  1      OPC=retq            
                                                                
.size target, .-target
