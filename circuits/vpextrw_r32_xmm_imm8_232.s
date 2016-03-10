  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movq $0x0, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  xorb %bh, %bl      #  2     0xa   2      OPC=xorb_r8_rh       
  vmovq %xmm1, %rsp  #  3     0xc   5      OPC=vmovq_r64_xmm    
  setnc %bl          #  4     0x11  3      OPC=setnc_r8         
  cmovlew %sp, %bx   #  5     0x14  4      OPC=cmovlew_r16_r16  
  retq               #  6     0x18  1      OPC=retq             
                                                                
.size target, .-target
