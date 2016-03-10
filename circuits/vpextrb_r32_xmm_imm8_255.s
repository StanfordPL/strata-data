  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq $0xfffffffffffffff9, %rbx                #  2     0x5   10     OPC=movq_r64_imm64     
  vmovmskpd %xmm7, %r8                          #  3     0xf   4      OPC=vmovmskpd_r64_xmm  
  callq .move_byte_15_of_ymm1_to_r8b            #  4     0x13  5      OPC=callq_label        
  testb %bh, %bh                                #  5     0x18  2      OPC=testb_rh_rh        
  cmovneq %r8, %rbx                             #  6     0x1a  4      OPC=cmovneq_r64_r64    
  retq                                          #  7     0x1e  1      OPC=retq               
                                                                                             
.size target, .-target
